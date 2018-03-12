using System;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

[Serializable]
public class TransformTweenClip : PlayableAsset, ITimelineClipAsset
{
    public TransformTweenBehaviour template = new TransformTweenBehaviour ();
    public ExposedReference<Transform> startLocation;
    public ExposedReference<Transform> endLocation;
    
    public ClipCaps clipCaps
    {
        get { return ClipCaps.Blending; }
    }

    public override Playable CreatePlayable (PlayableGraph graph, GameObject owner)
    {
        //Debug.Log("create transform playable");
        var playable = ScriptPlayable<TransformTweenBehaviour>.Create (graph, template);
        TransformTweenBehaviour clone = playable.GetBehaviour ();
        clone.startLocation = startLocation.Resolve (graph.GetResolver ());
        clone.endLocation = endLocation.Resolve (graph.GetResolver ());
        return playable;
    }
}