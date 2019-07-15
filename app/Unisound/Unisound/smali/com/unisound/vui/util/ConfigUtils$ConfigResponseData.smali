.class public Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/ConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigResponseData"
.end annotation


# instance fields
.field private configFileUrl:Ljava/lang/String;

.field private processStatus:I

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;->configFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessStatus()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;->processStatus:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setConfigFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "configFileUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;->configFileUrl:Ljava/lang/String;

    return-void
.end method

.method public setProcessStatus(I)V
    .locals 0
    .param p1, "processStatus"    # I

    .prologue
    iput p1, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;->processStatus:I

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/ConfigUtils$ConfigResponseData;->requestId:Ljava/lang/String;

    return-void
.end method
