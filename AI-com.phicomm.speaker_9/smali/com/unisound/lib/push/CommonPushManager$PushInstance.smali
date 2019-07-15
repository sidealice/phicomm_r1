.class Lcom/unisound/lib/push/CommonPushManager$PushInstance;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/push/CommonPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PushInstance"
.end annotation


# static fields
.field public static instance:Lcom/unisound/lib/push/CommonPushManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unisound/lib/push/CommonPushManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/push/CommonPushManager;-><init>(Lcom/unisound/lib/push/CommonPushManager$1;)V

    sput-object v0, Lcom/unisound/lib/push/CommonPushManager$PushInstance;->instance:Lcom/unisound/lib/push/CommonPushManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
