.class public Lnluparser/scheme/BroadcastResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lnluparser/scheme/Result;


# instance fields
.field audienceCount:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "audience_count"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audience_count"
    .end annotation
.end field

.field channelId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "channel_id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel_id"
    .end annotation
.end field

.field coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover_url_large"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field coverUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cover_url_small"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_small"
    .end annotation
.end field

.field dataSourceName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dataSourceName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dataSourceName"
    .end annotation
.end field

.field description:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "description"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field errorCode:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "errorCode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorCode"
    .end annotation
.end field

.field programName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "program_name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "program_name"
    .end annotation
.end field

.field rate24AacUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rate24_aac_url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate24_aac_url"
    .end annotation
.end field

.field rate24TsUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rate24_ts_url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate24_ts_url"
    .end annotation
.end field

.field rate64AacUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rate64_aac_url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate64_aac_url"
    .end annotation
.end field

.field rate64TsUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "rate64_ts_url"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate64_ts_url"
    .end annotation
.end field

.field scheduleId:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "schedule_id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "schedule_id"
    .end annotation
.end field

.field source:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "source"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field supportBitrates:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "support_bitrates"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "support_bitrates"
    .end annotation
.end field

.field title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "title"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field totalTime:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "totalTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalTime"
    .end annotation
.end field

.field updateTime:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "update_time"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudienceCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->audienceCount:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/BroadcastResult;->channelId:I

    return v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->dataSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/BroadcastResult;->errorCode:I

    return v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public getRate24AacUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->rate24AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate24TsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->rate24TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate64AacUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->rate64AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate64TsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->rate64TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleId()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/BroadcastResult;->scheduleId:I

    return v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/BroadcastResult;->source:I

    return v0
.end method

.method public getSupportBitrates()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->supportBitrates:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/BroadcastResult;->totalTime:I

    return v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/BroadcastResult;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAudienceCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "audienceCount"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->audienceCount:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(I)V
    .locals 0
    .param p1, "channelId"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/BroadcastResult;->channelId:I

    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlLarge"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->coverUrlLarge:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlSmall"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->coverUrlSmall:Ljava/lang/String;

    return-void
.end method

.method public setDataSourceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataSourceName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->dataSourceName:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->description:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/BroadcastResult;->errorCode:I

    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0
    .param p1, "programName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->programName:Ljava/lang/String;

    return-void
.end method

.method public setRate24AacUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate24AacUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->rate24AacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate24TsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate24TsUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->rate24TsUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate64AacUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate64AacUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->rate64AacUrl:Ljava/lang/String;

    return-void
.end method

.method public setRate64TsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate64TsUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->rate64TsUrl:Ljava/lang/String;

    return-void
.end method

.method public setScheduleId(I)V
    .locals 0
    .param p1, "scheduleId"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/BroadcastResult;->scheduleId:I

    return-void
.end method

.method public setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/BroadcastResult;->source:I

    return-void
.end method

.method public setSupportBitrates(Ljava/lang/String;)V
    .locals 0
    .param p1, "supportBitrates"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->supportBitrates:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->title:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(I)V
    .locals 0
    .param p1, "totalTime"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/BroadcastResult;->totalTime:I

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/BroadcastResult;->updateTime:Ljava/lang/String;

    return-void
.end method
