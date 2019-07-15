.class public Lcom/unisound/ant/device/netmodule/request/RequestBody;
.super Ljava/lang/Object;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;
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
.field private businessType:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tcl:Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "2.0.0"

    iput-object v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBusinessType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->businessType:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->command:Ljava/lang/String;

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
    .line 36
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getTcl()Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->tcl:Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBusinessType(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessType"    # Ljava/lang/String;

    .prologue
    .line 24
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->businessType:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 32
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->command:Ljava/lang/String;

    .line 33
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
    .line 40
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->data:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public setTcl(Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;)V
    .locals 0
    .param p1, "tcl"    # Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;

    .prologue
    .line 48
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->tcl:Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;

    .line 49
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 56
    .local p0, "this":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<TT;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/request/RequestBody;->version:Ljava/lang/String;

    .line 57
    return-void
.end method
