.class Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;
.super Ljava/lang/Object;
.source "ZkNewsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestContent"
.end annotation


# instance fields
.field deviceId:Ljava/lang/String;

.field newsId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "newsId"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;->deviceId:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;->newsId:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;->newsId:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;->deviceId:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setNewsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsId"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$RequestContent;->newsId:Ljava/lang/String;

    .line 117
    return-void
.end method
