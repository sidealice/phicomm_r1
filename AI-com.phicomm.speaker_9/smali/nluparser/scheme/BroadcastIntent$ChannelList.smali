.class public Lnluparser/scheme/BroadcastIntent$ChannelList;
.super Ljava/lang/Object;
.source "BroadcastIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/BroadcastIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;
    }
.end annotation


# instance fields
.field channel:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "channel"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channel"
    .end annotation
.end field

.field frequencyList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "frequencyList"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frequencyList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnluparser/scheme/BroadcastIntent$ChannelList;->frequencyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lnluparser/scheme/BroadcastIntent$ChannelList;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequencyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lnluparser/scheme/BroadcastIntent$ChannelList;->frequencyList:Ljava/util/List;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lnluparser/scheme/BroadcastIntent$ChannelList;->channel:Ljava/lang/String;

    return-void
.end method

.method public setFrequencyList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnluparser/scheme/BroadcastIntent$ChannelList$FrequencyList;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lnluparser/scheme/BroadcastIntent$ChannelList;->frequencyList:Ljava/util/List;

    return-void
.end method
