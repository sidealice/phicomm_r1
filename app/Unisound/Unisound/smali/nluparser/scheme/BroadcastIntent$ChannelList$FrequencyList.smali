.class public Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/BroadcastIntent$ChannelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrequencyList"
.end annotation


# instance fields
.field frequency:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "frequency"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frequency"
    .end annotation
.end field

.field type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field unit:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "unit"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "unit"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrequency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->frequency:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public setFrequency(Ljava/lang/String;)V
    .locals 0
    .param p1, "frequency"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->frequency:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->type:Ljava/lang/String;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->unit:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->frequency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
