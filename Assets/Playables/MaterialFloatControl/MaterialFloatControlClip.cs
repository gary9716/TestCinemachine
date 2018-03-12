using System;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

[Serializable]
public class MaterialFloatControlClip : PlayableAsset, ITimelineClipAsset
{
    public MaterialFloatControlBehaviour template = new MaterialFloatControlBehaviour ();

    public ClipCaps clipCaps
    {
        get { return ClipCaps.None; }
    }

    public override Playable CreatePlayable (PlayableGraph graph, GameObject owner)
    {
        var playable = ScriptPlayable<MaterialFloatControlBehaviour>.Create (graph, template);
        MaterialFloatControlBehaviour clone = playable.GetBehaviour ();
        return playable;
    }
}
