using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Audio;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour {
	
	public GameObject gun;
	public AudioSource gunSound;
	public AudioSource gunshotSound;
	public AudioSource wetgrassMusic;
	public GameObject crosshair;
	public List<Light> playerLights;
	public AnimationCurve lightFlashCurve;
	public Text introText;
	public GameObject titleCard;
	public Text theatreText;
	public GameObject gunEndingCard;
	public AudioMixer audioMixer;
	public SpriteRenderer gtastars;
	public GameObject breadcrumbPrefab;
	public Vector3 crumbForce;
	public BirdManager birdManager;
	public int noteriety;
	public int keyNoteriety;
	public float gunTimer;
	private List<float> originalLightIntensities;
	private Event CardboardOnTrigger;
	private float tapDuration;
	private bool crumbsDisabled;
	private bool gunEnabled;
	private bool shotGun;
	private IEnumerator gunPhase;

	// Use this for initialization
	void Start () {
		Cardboard.SDK.Recenter();
		Cardboard.SDK.BackButtonMode = Cardboard.BackButtonModes.Off;
		crumbsDisabled = false;
		gunEnabled = false;
		shotGun = false;
		originalLightIntensities = new List<float>();
		
		Cardboard.SDK.TapIsTrigger = true;
		Cardboard.SDK.OnTrigger += OnTrigger;
		gun.SetActive(false);
		crosshair.SetActive(false);
		gtastars.gameObject.SetActive(false);
		theatreText.gameObject.SetActive(false);
		foreach( Light thisLight in playerLights ) {
			originalLightIntensities.Add(thisLight.intensity);
		}
		StartCoroutine( OpeningSequence() );
	}
	
	void OnTrigger() {
		tapDuration += 1;
		if( tapDuration > 1 ) {
			Cardboard.SDK.Recenter();
			Debug.Log("resetting camera");
			tapDuration = 0;
		} else if( !crumbsDisabled ) {
			StartCoroutine( ThrowCrumb() );
		} else if( gunEnabled ) {
			shotGun = true;
		}
	}
	
	// Update is called once per frame
	void Update () {
		tapDuration -= Time.deltaTime / 2.5f;
		if( noteriety >= keyNoteriety && !crumbsDisabled ) {
			gunPhase = TakeOutGun();
			StartCoroutine( gunPhase );
		}
	}
	
	IEnumerator OpeningSequence() {
		crumbsDisabled = true;
		gunEnabled = false;
		gtastars.gameObject.SetActive(false);
		foreach( Light thisLight in playerLights ) {
			thisLight.intensity = 0;
		}
		audioMixer.SetFloat("ForestVolume", -80);
		audioMixer.SetFloat("AudienceVolume", -80);
		audioMixer.SetFloat("PigeonsVolume", -80);
		introText.gameObject.SetActive(false);
		yield return new WaitForSeconds(2.8f); // 2.8
		introText.gameObject.SetActive(true);
		introText.text = "Ladies, gentlemen, and everyone.";
		yield return new WaitForSeconds(5.32f); // 8.12
		introText.text = "Tonight. For your audiovisual and interactive entertainment.";
		yield return new WaitForSeconds(6.98f); // 15.1
		introText.text = "A slow and reserved experience.";
		yield return new WaitForSeconds(6.3f); // 21.4
		introText.gameObject.SetActive(false);
		titleCard.SetActive(true);
		yield return new WaitForSeconds(8.1f); // 29.5
		introText.gameObject.SetActive(true);
		introText.text = "Once we begin, press button to feed birds.";
		yield return new WaitForSeconds(6.5f);
		introText.gameObject.SetActive(false);
		titleCard.SetActive(false);
		for( int i = 0; i < 3; i++ ) {
			StartCoroutine( EnableLight(i) );
			yield return new WaitForSeconds( 1.5f );
		}
		crumbsDisabled = false;
		StartCoroutine( ScaleAudio("AudienceVolume", 0, 4) );
		StartCoroutine( ScaleAudio("ForestVolume", 0, 10) );
		audioMixer.SetFloat("PigeonsVolume", -20);
	}
	
	IEnumerator EnableLight(int index) {
		playerLights[index].GetComponent<AudioSource>().Play();
		playerLights[index].intensity = 8;
		float duration = .8f;
		Debug.Log("4");
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
		StartCoroutine( ScaleAudio("PigeonsVolume", -50, 12) );
		// audioMixer.SetFloat("AudienceVolume", -70);
		StartCoroutine( ScaleAudio("ForestVolume", -50, 12) );
		crumbsDisabled = true;
		// stop music
		// quiet birds
		// show stars
		yield return new WaitForSeconds(1f);
		gtastars.gameObject.SetActive(true);
		// play gunsound
		
		// gun.GetComponent<AudioSource>().Play();
		
		StartCoroutine( MoveGunUp() );
		yield return new WaitForSeconds(1f);
		gtastars.gameObject.SetActive(false);
		
		yield return new WaitForSeconds(1f);
		gtastars.gameObject.SetActive(true);
		// show gun
		
		crosshair.SetActive(true);
		gunEnabled = true;
		
		
		// play gun sound
		for( float timer = 0f; timer < gunTimer; timer += Time.deltaTime ){
			if( shotGun ) {
				StartCoroutine( ShotGunEnding() );
				StopCoroutine( gunPhase );

			}
			// Debug.Log("2");
			yield return null;
		}
		
		// light backstage
		// Debug.Log("3");
		StartCoroutine( EnableLight(3) );
		
		for( float timer = 0f; timer < gunTimer; timer += Time.deltaTime ){
			if( shotGun ) {
				StartCoroutine( ShotGunEnding() );
				StopCoroutine( gunPhase );
			}
			// Debug.Log("2");
			yield return null;
		}
		
		
		// wait for player to look behind
		// once looking around, put gun down
		float directionlooked = Cardboard.SDK.HeadPose.Orientation.eulerAngles.y - 270;
		while( directionlooked < -100f || directionlooked > -60  ) { // -140, -20
			directionlooked = Cardboard.SDK.HeadPose.Orientation.eulerAngles.y - 270;
			if( shotGun ) {
				StartCoroutine( ShotGunEnding() );
				StopCoroutine( gunPhase );
				Debug.Log("Shit2");
			}
			yield return null;
		}
		StartCoroutine( SpeakToAudienceEnding() );
		
	}
	
	IEnumerator MoveGunUp() {
		gunSound.Play();
		gun.SetActive( true );
		Vector3 originalPosition = gun.transform.position;
		gun.transform.Translate( 0, -.4f, 0 );
		Vector3 loweredPosition = gun.transform.position;
		for( float time = 0; time < 2f; time += Time.deltaTime ) {
			gun.transform.position = Vector3.Lerp( loweredPosition, originalPosition, time/ 2f );
			yield return null;
		}
		gun.transform.position = originalPosition;	
	}
	
	IEnumerator MoveGunDown() {
		gunSound.Play();
		Vector3 originalPosition = gun.transform.position;
		Vector3 loweredPosition = gun.transform.position - new Vector3(0, .4f, 0);
		for( float time = 0; time < 2f; time += Time.deltaTime ) {
			gun.transform.position = Vector3.Lerp( originalPosition, loweredPosition, time/ 2f );
			yield return null;
		}
		gun.transform.position = loweredPosition;
		gun.SetActive(false);
		gunEnabled = false;	
	}
	
	IEnumerator ShotGunEnding() {
		gtastars.gameObject.SetActive(false);
		crosshair.gameObject.SetActive(false);
		gunshotSound.Play();
		Debug.Log("Shit, obv");
		// screen to black
		foreach( Light thisLight in playerLights ) {
			thisLight.intensity = 0;
		}
		Cardboard.SDK.Recenter();
		
		yield return new WaitForSeconds(2);
		introText.gameObject.SetActive(true);
		introText.text = "Oh.";
		yield return new WaitForSeconds(4);
		introText.text = "Well then.";
		yield return new WaitForSeconds(4);
		StartCoroutine( RollCredits() );
		// end		
	}

	
	IEnumerator SpeakToAudienceEnding() {
		// play audio track
		Debug.Log( "Audience Ending ");
		StartCoroutine(MoveGunDown());
		gtastars.gameObject.SetActive(false);
		crosshair.gameObject.SetActive(false);
		yield return new WaitForSeconds(2);
		StartCoroutine( ScaleAudio("ForestVolume", 10, 15) );
		theatreText.gameObject.SetActive(true);
		theatreText.text = "It's rather easy to shoot birds when you have a gun, isn't it.";
		yield return new WaitForSeconds(7);
		theatreText.text = "When the same interface for progressing is the one for violence, violence becomes the progression.";
		yield return new WaitForSeconds(10);
		theatreText.text = "I'd rather just stay with the birds myself.";
		yield return new WaitForSeconds(5);
		StartCoroutine( RollCredits() );
	}
	
	IEnumerator ClearSkies() {
		for( float time = 0; time < 20f; time += Time.deltaTime ) {
			
			yield return null;
		}
	}
	
	 IEnumerator ScaleAudio(string key, float value, float duration) {
		 float start;
		 audioMixer.GetFloat(key, out start);
		 for( float time = 0; time < duration; time += Time.deltaTime ) {
			audioMixer.SetFloat(key, Mathf.Lerp(start, value, time/duration ));
			yield return null;
		}
	 }
	
	IEnumerator RollCredits() {
		wetgrassMusic.Play();
		StartCoroutine( ScaleAudio("ForestVolume", -80, 2) );
		StartCoroutine( ScaleAudio("AudienceVolume", -80, 2) );
		StartCoroutine( ScaleAudio("PigeonsVolume", -80, 2) );
		titleCard.SetActive(true);
		introText.gameObject.SetActive(false);
		yield return new WaitForSeconds(6); // 6
		introText.gameObject.SetActive(true);
		introText.text = "Music by\nLullatone.";
		
		yield return new WaitForSeconds(2.5f); // 8.5
		introText.text = "Birds by\nOliver Garcia-Borg.";
		yield return new WaitForSeconds(3f); // 11.5
		introText.text = "Thank you for playing.";
		yield return new WaitForSeconds(17f);
		SceneManager.LoadScene( 0 );
		
	}
}
