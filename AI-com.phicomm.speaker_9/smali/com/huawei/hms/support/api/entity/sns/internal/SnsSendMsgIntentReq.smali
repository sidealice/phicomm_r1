.class public Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private callerPackageName:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private msgType:I
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private needResult:Z
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private snsMsg:Lcom/huawei/hms/support/api/entity/sns/SnsMsg;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallerPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->callerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->msgType:I

    return v0
.end method

.method public getSnsMsg()Lcom/huawei/hms/support/api/entity/sns/SnsMsg;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->snsMsg:Lcom/huawei/hms/support/api/entity/sns/SnsMsg;

    return-object v0
.end method

.method public isNeedResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->needResult:Z

    return v0
.end method

.method public setCallerPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->callerPackageName:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->msgType:I

    return-void
.end method

.method public setNeedResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->needResult:Z

    return-void
.end method

.method public setSnsMsg(Lcom/huawei/hms/support/api/entity/sns/SnsMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/SnsSendMsgIntentReq;->snsMsg:Lcom/huawei/hms/support/api/entity/sns/SnsMsg;

    return-void
.end method
