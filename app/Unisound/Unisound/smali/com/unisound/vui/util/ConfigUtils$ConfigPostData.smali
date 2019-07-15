.class public Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/ConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigPostData"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigPostData;->udid:Ljava/lang/String;

    return-void
.end method
