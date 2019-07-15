.class Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;
.super Ljava/lang/Object;
.source "ZkNewsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/helpers/ZkNewsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Response"
.end annotation


# instance fields
.field returnCode:Ljava/lang/String;

.field returnMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public getReturnCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;->returnCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;->returnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setReturnCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnCode"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;->returnCode:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setReturnMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnMsg"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/phicomm/speaker/player/helpers/ZkNewsTracker$Response;->returnMsg:Ljava/lang/String;

    .line 141
    return-void
.end method
