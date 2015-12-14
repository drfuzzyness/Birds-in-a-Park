using UnityEngine;
using System.Collections;

public class PlayOnCollide : MonoBehaviour {
	
	public float cooldown;
	private float startCooldown;
	private AudioSource audio;

	// Use this for initialization
	void Start () {
		audio = GetComponent<AudioSource>();
		startCooldown = cooldown;
		cooldown = 0;
	}
	
	void Update() {
		if( cooldown > 0 ) {
			cooldown -= Time.deltaTime;
		}
	}
	
	void OnCollisionEnter(Collision collision) {
		if( cooldown <= 0 ) {
			audio.Play();
			audio.pitch = Random.Range( .8f, 1.3f);
			cooldown = 0;
		}
	}
}
