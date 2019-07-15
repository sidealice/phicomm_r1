.class public Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigState;
.super Ljava/lang/Object;
.source "CommonConfigState.java"


# instance fields
.field private config:Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigState;->config:Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    return-object v0
.end method

.method public setConfig(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigState;->config:Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    return-void
.end method
