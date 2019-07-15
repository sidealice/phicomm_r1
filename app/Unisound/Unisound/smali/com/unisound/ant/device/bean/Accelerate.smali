.class public Lcom/unisound/ant/device/bean/Accelerate;
.super Ljava/lang/Object;
.source "Accelerate.java"


# instance fields
.field command:Ljava/lang/String;

.field valuse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/unisound/ant/device/bean/Accelerate;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getValuse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/unisound/ant/device/bean/Accelerate;->valuse:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/unisound/ant/device/bean/Accelerate;->command:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setValuse(Ljava/lang/String;)V
    .locals 0
    .param p1, "valuse"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/unisound/ant/device/bean/Accelerate;->valuse:Ljava/lang/String;

    .line 25
    return-void
.end method
