using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {
	
	public GameObject breadcrumbPrefab;
	public Vector3 crumbForce;
	public BirdManager birdManager;
	public int noteriety;
	public int keyNoteriety;
	private float tapDuration;
	private bool throwingCrumb;

	// Use this for initialization
	void Start () {
		Cardboard.SDK.Recenter();
		throwingCrumb = false;
		iTween.CameraFadeAdd();
		iTween.CameraFadeTo(0, 2);
	}
	
	// Update is called once per frame
	void Update () {
		if( Input.anyKey ) {
			tapDuration += Time.deltaTime;
		} else {
			if( tapDuration > 2f ) {
				Cardboard.SDK.Recenter();
			} else if( tapDuration > .1f ) {
				// throw crumb
				if( !throwingCrumb ) {
					noteriety++;
					StartCoroutine( ThrowCrumb() );
				}
			}
			tapDuration = 0;
		}
		
		if( noteriety > keyNoteriety ) {
			
		}
	}
	
	IEnumerator ThrowCrumb() {
		throwingCrumb = true;
		GameObject crumb = (GameObject) Instantiate( breadcrumbPrefab, transform.position, Quaternion.identity );
		crumb.GetComponent<Rigidbody>().AddForce( crumbForce, ForceMode.VelocityChange );
		yield return new WaitForSeconds(2);
		birdManager.MakeBird( crumb.transform.position );
		throwingCrumb = false;
	}
	
	IEnumerator TakeOutGun() {
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
