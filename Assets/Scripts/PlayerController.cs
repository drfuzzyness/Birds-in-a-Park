using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {
	
	public GameObject breadcrumbPrefab;
	public Vector3 crumbForce;
	public BirdManager birdManager;
	public int noteriety;
	public int keyNoteriety;
	private Event CardboardOnTrigger;
	private float tapDuration;
	private bool throwingCrumb;

	// Use this for initialization
	void Start () {
		Cardboard.SDK.Recenter();
		throwingCrumb = false;
		iTween.CameraFadeAdd();
		iTween.CameraFadeTo(0, 2);
		Cardboard.SDK.TapIsTrigger = true;
		Cardboard.SDK.OnTrigger += OnTrigger;
	}
	
	void OnTrigger() {
		tapDuration += 1;
		if( tapDuration >= 3 ) {
			Cardboard.SDK.Recenter();
			tapDuration = 0;
		} else if( !throwingCrumb ) {
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
	
	IEnumerator ThrowCrumb() {
		throwingCrumb = true;
		GameObject crumb = (GameObject) Instantiate( breadcrumbPrefab, transform.position, Cardboard.SDK.HeadPose.Orientation );
		yield return null;
		// Debug.Log(  );
		crumb.GetComponent<Rigidbody>().AddRelativeForce( crumbForce, ForceMode.VelocityChange );
		yield return new WaitForSeconds(2);
		birdManager.MakeBird( crumb.transform.position );
		throwingCrumb = false;
	}
	
	IEnumerator TakeOutGun() {
		// stop music
		// quiet birds
		// show stars
		yield return new WaitForSeconds(2);
		// show gun
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
