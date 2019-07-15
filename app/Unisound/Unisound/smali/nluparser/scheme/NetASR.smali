.class public Lnluparser/scheme/NetASR;
.super Lnluparser/scheme/ASR;


# instance fields
.field lastResult:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "last_result"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_result"
    .end annotation
.end field

.field sessionID:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sessionID"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnluparser/scheme/ASR;-><init>()V

    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/NetASR;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public isLastResult()Z
    .locals 1

    iget-boolean v0, p0, Lnluparser/scheme/NetASR;->lastResult:Z

    return v0
.end method

.method public setLastResult(Z)V
    .locals 0
    .param p1, "lastResult"    # Z

    .prologue
    iput-boolean p1, p0, Lnluparser/scheme/NetASR;->lastResult:Z

    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NetASR;->sessionID:Ljava/lang/String;

    return-void
.end method
