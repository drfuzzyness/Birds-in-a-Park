using UnityEngine;
using System.Collections;

public class Bird : MonoBehaviour {
	public float age;
	// Use this for initialization
	void Start () {
		age = 0;
	}
	
	// Update is called once per frame
	void Update () {
		age += Time.deltaTime;
	}
	
	IEnumerator FlyTo( Vector3 targetPosition, Quaternion targetRotation, float duration ) {
		Vector3 startPosition = transform.position;
		Quaternion startRotation = transform.rotation;
		for( float time = 0; time < duration; time += Time.deltaTime ) {
			transform.position = Vector3.Lerp( startPosition, targetPosition, time/duration );
			transform.rotation = Quaternion.Slerp( startRotation, targetRotation, time/duration );
			yield return null;
		}
		transform.position = targetPosition;
	}
}
