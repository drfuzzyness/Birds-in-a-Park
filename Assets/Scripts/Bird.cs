using UnityEngine;
using System.Collections;

public class Bird : MonoBehaviour {
	public float age;
	public AnimationCurve animation;
	public Renderer mesh;
	private AudioSource cooing;
	// Use this for initialization
	void Start () {
		age = 0;
		cooing = GetComponent<AudioSource>();
		cooing.pitch = Random.Range(0.8f, 1.2f);
	}
	
	// Update is called once per frame
	void Update () {
		age += Time.deltaTime;
	}
	
	public void GoFlyTo( Vector3 targetPosition, Quaternion targetRotation, float duration ) {
		StartCoroutine( FlyTo(  targetPosition,  targetRotation, duration ) );
	}
	
	IEnumerator FlyTo( Vector3 targetPosition, Quaternion targetRotation, float duration ) {
		Vector3 startPosition = transform.position;
		Quaternion startRotation = transform.rotation;
		for( float time = 0; time < duration; time += Time.deltaTime ) {
			float ratio = animation.Evaluate(time/duration);
			transform.position = Vector3.Lerp( startPosition, targetPosition, ratio );
			// transform.rotation = Quaternion.Slerp( startRotation, targetRotation, ratio );
			yield return null;
		}
		transform.position = targetPosition;
		transform.rotation = targetRotation;
	}
}
