.class public Lcom/unisound/ant/device/mqtt/bean/LconRequest;
.super Ljava/lang/Object;
.source "LconRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field command:Ljava/lang/String;

.field data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field tcl:Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getTcl()Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->tcl:Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 26
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->command:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->data:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public setTcl(Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;)V
    .locals 0
    .param p1, "tcl"    # Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;

    .prologue
    .line 43
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->tcl:Lcom/unisound/ant/device/mqtt/bean/LconRequest$EffectiveToken;

    .line 44
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 18
    .local p0, "this":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/bean/LconRequest;->version:Ljava/lang/String;

    .line 19
    return-void
.end method
