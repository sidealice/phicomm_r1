.class final enum Lcom/huawei/hms/support/api/push/PushReceiver$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/api/push/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/support/api/push/PushReceiver$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/support/api/push/PushReceiver$c;

.field public static final enum b:Lcom/huawei/hms/support/api/push/PushReceiver$c;

.field public static final enum c:Lcom/huawei/hms/support/api/push/PushReceiver$c;

.field public static final enum d:Lcom/huawei/hms/support/api/push/PushReceiver$c;

.field public static final enum e:Lcom/huawei/hms/support/api/push/PushReceiver$c;

.field public static final enum f:Lcom/huawei/hms/support/api/push/PushReceiver$c;

.field private static final synthetic g:[Lcom/huawei/hms/support/api/push/PushReceiver$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;

    const-string v1, "ReceiveType_Init"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/support/api/push/PushReceiver$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;->a:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    new-instance v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;

    const-string v1, "ReceiveType_Token"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/huawei/hms/support/api/push/PushReceiver$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;->b:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    new-instance v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;

    const-string v1, "ReceiveType_Msg"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/huawei/hms/support/api/push/PushReceiver$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;->c:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    new-instance v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;

    const-string v1, "ReceiveType_PushState"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/huawei/hms/support/api/push/PushReceiver$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;->d:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    new-instance v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;

    const-string v1, "ReceiveType_NotifyClick"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/huawei/hms/support/api/push/PushReceiver$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;->e:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    new-instance v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;

    const-string v1, "ReceiveType_ClickBtn"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/huawei/hms/support/api/push/PushReceiver$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;->f:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/huawei/hms/support/api/push/PushReceiver$c;

    sget-object v1, Lcom/huawei/hms/support/api/push/PushReceiver$c;->a:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/hms/support/api/push/PushReceiver$c;->b:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/hms/support/api/push/PushReceiver$c;->c:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/hms/support/api/push/PushReceiver$c;->d:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/hms/support/api/push/PushReceiver$c;->e:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/hms/support/api/push/PushReceiver$c;->f:Lcom/huawei/hms/support/api/push/PushReceiver$c;

    aput-object v1, v0, v7

    sput-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;->g:[Lcom/huawei/hms/support/api/push/PushReceiver$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/support/api/push/PushReceiver$c;
    .locals 1

    const-class v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/support/api/push/PushReceiver$c;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/support/api/push/PushReceiver$c;
    .locals 1

    sget-object v0, Lcom/huawei/hms/support/api/push/PushReceiver$c;->g:[Lcom/huawei/hms/support/api/push/PushReceiver$c;

    invoke-virtual {v0}, [Lcom/huawei/hms/support/api/push/PushReceiver$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/support/api/push/PushReceiver$c;

    return-object v0
.end method
