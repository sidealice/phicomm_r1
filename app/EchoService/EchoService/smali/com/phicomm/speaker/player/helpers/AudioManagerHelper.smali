.class public Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;
.super Ljava/lang/Object;
.source "AudioManagerHelper.java"


# instance fields
.field private mAudioDucked:Z

.field private mCurrentVolume:I

.field private mHasAudioFocus:Z

.field private mOriginalVolume:I

.field private mStepDownIncrement:I

.field private mStepUpIncrement:I

.field private mTargetVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mHasAudioFocus:Z

    .line 7
    iput-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mAudioDucked:Z

    return-void
.end method


# virtual methods
.method public getCurrentVolume()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mCurrentVolume:I

    return v0
.end method

.method public getOriginalVolume()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mOriginalVolume:I

    return v0
.end method

.method public getStepDownIncrement()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mStepDownIncrement:I

    return v0
.end method

.method public getStepUpIncrement()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mStepUpIncrement:I

    return v0
.end method

.method public getTargetVolume()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mTargetVolume:I

    return v0
.end method

.method public hasAudioFocus()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mHasAudioFocus:Z

    return v0
.end method

.method public isAudioDucked()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mAudioDucked:Z

    return v0
.end method

.method public setAudioDucked(Z)V
    .locals 0
    .param p1, "audioDucked"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mAudioDucked:Z

    .line 59
    return-void
.end method

.method public setCurrentVolume(I)V
    .locals 0
    .param p1, "currentVolume"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mCurrentVolume:I

    .line 67
    return-void
.end method

.method public setHasAudioFocus(Z)V
    .locals 0
    .param p1, "hasAudioFocus"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mHasAudioFocus:Z

    .line 51
    return-void
.end method

.method public setOriginalVolume(I)V
    .locals 0
    .param p1, "originalVolume"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mOriginalVolume:I

    .line 55
    return-void
.end method

.method public setStepDownIncrement(I)V
    .locals 0
    .param p1, "stepDownIncrement"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mStepDownIncrement:I

    .line 71
    return-void
.end method

.method public setStepUpIncrement(I)V
    .locals 0
    .param p1, "stepUpIncrement"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mStepUpIncrement:I

    .line 75
    return-void
.end method

.method public setTargetVolume(I)V
    .locals 0
    .param p1, "targetVolume"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/phicomm/speaker/player/helpers/AudioManagerHelper;->mTargetVolume:I

    .line 63
    return-void
.end method
