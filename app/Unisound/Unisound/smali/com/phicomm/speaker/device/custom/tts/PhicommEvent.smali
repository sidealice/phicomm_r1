.class public Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;
.super Ljava/lang/Object;
.source "PhicommEvent.java"


# instance fields
.field private mTtsContent:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "ttsContent"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;->mType:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;->mTtsContent:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getTtsContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;->mTtsContent:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;->mType:Ljava/lang/String;

    return-object v0
.end method
