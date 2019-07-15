.class public Lnluparser/scheme/Mixture;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lnluparser/scheme/Intent;",
        "R::",
        "Lnluparser/scheme/Result;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field localASRList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "local_asr"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "local_asr"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/LocalASR;",
            ">;"
        }
    .end annotation
.end field

.field netASRList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "net_asr"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "net_asr"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NetASR;",
            ">;"
        }
    .end annotation
.end field

.field nluList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "net_nlu"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "net_nlu"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NLU",
            "<TI;TR;>;>;"
        }
    .end annotation
.end field

.field ttsDataValue:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "tts_data"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tts_data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocalASRList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/LocalASR;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/Mixture;->localASRList:Ljava/util/List;

    return-object v0
.end method

.method public getNetASRList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NetASR;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/Mixture;->netASRList:Ljava/util/List;

    return-object v0
.end method

.method public getNluList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NLU",
            "<TI;TR;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/Mixture;->nluList:Ljava/util/List;

    return-object v0
.end method

.method public getTtsDataValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/Mixture;->ttsDataValue:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalASRList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/LocalASR;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<TI;TR;>;"
    .local p1, "localASRList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/LocalASR;>;"
    iput-object p1, p0, Lnluparser/scheme/Mixture;->localASRList:Ljava/util/List;

    return-void
.end method

.method public setNetASRList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NetASR;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<TI;TR;>;"
    .local p1, "netASRList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NetASR;>;"
    iput-object p1, p0, Lnluparser/scheme/Mixture;->netASRList:Ljava/util/List;

    return-void
.end method

.method public setNluList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NLU",
            "<TI;TR;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<TI;TR;>;"
    .local p1, "nluList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NLU<TI;TR;>;>;"
    iput-object p1, p0, Lnluparser/scheme/Mixture;->nluList:Ljava/util/List;

    return-void
.end method

.method public setTtsDataValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttsDataValue"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<TI;TR;>;"
    iput-object p1, p0, Lnluparser/scheme/Mixture;->ttsDataValue:Ljava/lang/String;

    return-void
.end method
