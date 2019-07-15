.class public Lcom/unisound/client/FourMicAudioManager;
.super Lcom/unisound/sdk/x;


# direct methods
.method public constructor <init>(Lcom/unisound/client/FourMicAudioManagerListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/x;-><init>(Lcom/unisound/client/FourMicAudioManagerListener;)V

    return-void
.end method


# virtual methods
.method public setOption(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/x;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public startRecord()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/x;->startRecord()V

    return-void
.end method

.method public stopRecord()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/x;->stopRecord()V

    return-void
.end method
