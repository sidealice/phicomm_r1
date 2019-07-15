.class public Lcom/huawei/hms/support/api/entity/sns/SnsMsg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private checkTargetApp:Z
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private linkIconData:[B
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private targetAppMarketId:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private targetAppPackageName:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private targetAppVersionCode:I
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private urlType:I
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->urlType:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkIconData()[B
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->linkIconData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->linkIconData:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTargetAppMarketId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->targetAppMarketId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->targetAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAppVersionCode()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->targetAppVersionCode:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlType()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->urlType:I

    return v0
.end method

.method public isCheckTargetApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->checkTargetApp:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCheckTargetApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->checkTargetApp:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->description:Ljava/lang/String;

    return-void
.end method

.method public setLinkIconData([B)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->linkIconData:[B

    return-void
.end method

.method public setTargetAppMarketId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->targetAppMarketId:Ljava/lang/String;

    return-void
.end method

.method public setTargetAppPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->targetAppPackageName:Ljava/lang/String;

    return-void
.end method

.method public setTargetAppVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->targetAppVersionCode:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlType(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/entity/sns/SnsMsg;->urlType:I

    return-void
.end method
