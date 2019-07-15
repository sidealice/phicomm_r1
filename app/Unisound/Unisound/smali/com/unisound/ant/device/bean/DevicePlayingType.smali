.class public Lcom/unisound/ant/device/bean/DevicePlayingType;
.super Ljava/lang/Object;
.source "DevicePlayingType.java"


# instance fields
.field private currentState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentState"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DevicePlayingType;->currentState:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getCurrentState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DevicePlayingType;->currentState:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentState(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentState"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DevicePlayingType;->currentState:Ljava/lang/String;

    .line 21
    return-void
.end method
