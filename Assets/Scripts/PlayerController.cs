using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;
using System.Collections;
using System.Collections.Generic;

public class PlayerController : MonoBehaviour {
	
	public GameObject gun;
	public GameObject crosshair;
	public List<Light> playerLights;
	public AnimationCurve lightFlashCurve;
	public Text introText;
	public GameObject titleCard;
	public AudioMixer audioMixer;
	
	public GameObject breadcrumbPrefab;
	public Vector3 crumbForce;
	public BirdManager birdManager;
	public int noteriety;
	public int keyNoteriety;
	private List<float> originalLightIntensities;
	private Event CardboardOnTrigger;
	private float tapDuration;
	private bool crumbsDisabled;
	private bool gunEnabled;

	// Use this for initialization
	void Start () {
		Cardboard.SDK.Recenter();
		crumbsDisabled = false;
		gunEnabled = false;
		originalLightIntensities = new List<float>();
		
		Cardboard.SDK.TapIsTrigger = true;
		Cardboard.SDK.OnTrigger += OnTrigger;
		gun.SetActive(false);
		crosshair.SetActive(false);
		// StartCoroutine( OpeningSequence() );
	}
	
	void OnTrigger() {
		tapDuration += 1;
		if( tapDuration > 1 ) {
			Cardboard.SDK.Recenter();
			Debug.Log("resetting camera");
			tapDuration = 0;
		} else if( !crumbsDisabled ) {
			StartCoroutine( ThrowCrumb() );
		}
	}
	
	// Update is called once per frame
	void Update () {
		tapDuration -= Time.deltaTime;
		if( noteriety > keyNoteriety ) {
			StartCoroutine( TakeOutGun() );
		}
	}
	
	IEnumerator OpeningSequence() {
		crumbsDisabled = true;
		gunEnabled = false;
		foreach( Light thisLight in playerLights ) {
			originalLightIntensities.Add(thisLight.intensity);
			thisLight.intensity = 0;
		}
		introText.gameObject.SetActive(false);
		yield return new WaitForSeconds(2.8f); // 2.8
		introText.gameObject.SetActive(true);
		introText.text = "Ladies, gentlemen, and everyone.";
		yield return new WaitForSeconds(5.32f); // 8.12
		introText.text = "Tonight. For your audiovisual and interactive experience.";
		yield return new WaitForSeconds(6.98f); // 15.1
		introText.text = "A slow and reserved experience.";
		yield return new WaitForSeconds(6.3f); // 21.4
		introText.gameObject.SetActive(false);
		titleCard.SetActive(true);
		yield return new WaitForSeconds(8.1f); // 29.5
		introText.gameObject.SetActive(true);
		introText.text = "Press button to feed birds";
		yield return new WaitForSeconds(6.5f);
		introText.gameObject.SetActive(false);
		titleCard.SetActive(false);
		for( int i = 0; i < 3; i++ ) {
			StartCoroutine( EnableLight(i) );
			yield return new WaitForSeconds( 1.5f );
		}
		crumbsDisabled = false;
		audioMixer.SetFloat("AudienceVolume", .8f);
	}
	
	IEnumerator EnableLight(int index) {
		playerLights[index].GetComponent<AudioSource>().Play();
		playerLights[index].intensity = 8;
		float duration = .8f;
		for( float time = 0f; time < duration; time += Time.deltaTime ) {
			float ratio = lightFlashCurve.Evaluate(time/duration);
			playerLights[index].intensity = Mathf.Lerp( 
				8,
				originalLightIntensities[index],
				ratio );
			yield return null;
		}
		playerLights[index].intensity = originalLightIntensities[index];
	}
	
	IEnumerator ThrowCrumb() {
		crumbsDisabled = true;
		noteriety++;
		GameObject crumb = (GameObject) Instantiate( breadcrumbPrefab, transform.position, Cardboard.SDK.HeadPose.Orientation );
		yield return null;
		// Debug.Log(  );
		crumb.GetComponent<Rigidbody>().AddRelativeForce( crumbForce, ForceMode.VelocityChange );
		yield return new WaitForSeconds(2);
		birdManager.MakeBird( crumb.transform.position );
		crumbsDisabled = false;
	}
	
	IEnumerator TakeOutGun() {
		audioMixer.SetFloat("PigeonsVolume", .2f);
		audioMixer.SetFloat("AudienceVolume", .2f);
		// stop music
		// quiet birds
		// show stars
		yield return new WaitForSeconds(2);
		// show gun
		gun.SetActive(true);
		crosshair.SetActive(true);
		// wait for seconds and check if looking at audience
		
	}
	
	IEnumerator ShootBirdEnding() {
		// screen to black
		iTween.CameraFadeAdd();
		yield return new WaitForSeconds(3);
		// display text
		yield return new WaitForSeconds(6);
		// end		
	}
	
	IEnumerator ShootAudienceEnding() {
				// screen to black
		yield return new WaitForSeconds(3);
		// display text
		yield return new WaitForSeconds(6);
		// end	
	}
	
	IEnumerator SpeakToAudienceEnding() {
		// play audio track
		yield return new WaitForSeconds(12);
		// wait till facing birds
		// black screen
		// end
	}
}
