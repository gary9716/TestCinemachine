using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExplodeBehaviour : MonoBehaviour {

	Rigidbody[] rigids;
		
	public float forceIntensity;
	public float radius = 5f;

	public Camera camera;

	void Start() {
		rigids = GetComponentsInChildren<Rigidbody>();	
		if(rigids!=null) {
			Debug.Log(rigids.Length);
		}
	}

	bool raycastFromCamera(ref Vector3 hitPos) {
		RaycastHit hit;
		Ray ray = camera.ScreenPointToRay(Input.mousePosition);
		if(Physics.Raycast(ray, out hit, 1000)) {
			hitPos = hit.point;
			return true;
		}
		else {
			return false;
		}
	}

	Vector3 hitPos;

	// Update is called once per frame
	void Update () {
		if(Input.GetMouseButtonDown(0)) {
			if(raycastFromCamera(ref hitPos)) {
				Debug.Log("explode!");
				foreach(Rigidbody rigid in rigids) {
					rigid.AddExplosionForce(forceIntensity, hitPos, radius, 100, ForceMode.Impulse);
				}
			}
			
			
		}
	}


}
