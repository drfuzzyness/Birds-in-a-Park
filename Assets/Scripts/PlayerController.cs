using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {
	
	public GameObject breadcrumbPrefab;
	public BirdManager birdManager;
	private float tapDuration;
	private bool throwingCrumb;

	// Use this for initialization
	void Start () {
		Cardboard.SDK.Recenter();
		throwingCrumb = false;
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
					StartCoroutine( ThrowCrumb() );
				}
			}
			tapDuration = 0;
		}
		
	}
	
	IEnumerator ThrowCrumb() {
		throwingCrumb = true;
		GameObject crumb = (GameObject) Instantiate( breadcrumbPrefab, transform.position, Quaternion.identity );
		yield return new WaitForSeconds(2);
		birdManager.MakeBird( crumb.transform.position );
		throwingCrumb = false;
	}
}
