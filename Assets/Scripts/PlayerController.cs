using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class PlayerController : MonoBehaviour {
	
	public GameObject gun;
	public GameObject crosshair;
	public List<Light> playerLights;
	public Light audienceLight;
	
	public GameObject breadcrumbPrefab;
	public Vector3 crumbForce;
	public BirdManager birdManager;
	public int noteriety;
	public int keyNoteriety;
	private Event CardboardOnTrigger;
	private float tapDuration;
	private bool crumbsDisabled;
	private bool gunEnabled;

	// Use this for initialization
	void Start () {
		Cardboard.SDK.Recenter();
		crumbsDisabled = true;
		gunEnabled = false;
		
		Cardboard.SDK.TapIsTrigger = true;
		Cardboard.SDK.OnTrigger += OnTrigger;
		gun.SetActive(false);
		crosshair.SetActive(false);
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
		audienceLight.intensity = 0;
		foreach( Light thisLight in playerLights ) {
			thisLight.intensity = 0;
		}
		yield return null;
	}
	
	IEnumerator ThrowCrumb() {
		crumbsDisabled = true;
		GameObject crumb = (GameObject) Instantiate( breadcrumbPrefab, transform.position, Cardboard.SDK.HeadPose.Orientation );
		yield return null;
		// Debug.Log(  );
		crumb.GetComponent<Rigidbody>().AddRelativeForce( crumbForce, ForceMode.VelocityChange );
		yield return new WaitForSeconds(2);
		birdManager.MakeBird( crumb.transform.position );
		crumbsDisabled = false;
	}
	
	IEnumerator TakeOutGun() {
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
