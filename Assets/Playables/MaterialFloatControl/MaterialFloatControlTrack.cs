using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

[TrackColor(0.855f, 0.8623f, 0.87f)]
[TrackClipType(typeof(MaterialFloatControlClip))]
[TrackBindingType(typeof(MeshRenderer))]
public class MaterialFloatControlTrack : TrackAsset
{
    public override Playable CreateTrackMixer(PlayableGraph graph, GameObject go, int inputCount)
    {
        return ScriptPlayable<MaterialFloatControlMixerBehaviour>.Create (graph, inputCount);
    }
}
