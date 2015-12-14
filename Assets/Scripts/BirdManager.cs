using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BirdManager : MonoBehaviour {
	
	public AnimationCurve birdFlyAnimation;
	public List<string> birdPhrases;
	public GameObject birdPrefab;
	public Vector3 birdSpawnOffset;
	
	private List<Bird> birds;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	}
	
	public void MakeBird( Vector3 position) {
		Bird newbird = (Bird) Instantiate( birdPrefab.gameObject, position, Quaternion.identity );
		birds.Add( newbird );
	}
	
	public void RemoveBird( Bird bird ) {
		birds.Remove( bird );
		Destroy( bird );
	}
}
