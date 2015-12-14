using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class BirdManager : MonoBehaviour {
	
	public BirdManager instance;
	public AnimationCurve birdFlyAnimation;
	public List<string> birdPhrases;
	public GameObject birdPrefab;
	public Vector3 birdSpawnOffset;
	
	
	private List<Bird> birds;

	void Awake() {
		instance = this;
	}
	// Use this for initialization
	void Start () {
		birds = new List<Bird>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	public void MakeBird( Vector3 position) {
		Bird newbird = ((GameObject) Instantiate( birdPrefab.gameObject, position + birdSpawnOffset, Quaternion.identity )).GetComponent<Bird>();
		birds.Add( newbird );
		newbird.GoFlyTo( position, Quaternion.identity, 2 );
	}
	
	public void RemoveBird( Bird bird ) {
		birds.Remove( bird );
		Destroy( bird );
	}
}
