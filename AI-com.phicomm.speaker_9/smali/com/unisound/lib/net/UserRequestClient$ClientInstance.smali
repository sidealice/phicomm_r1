.class Lcom/unisound/lib/net/UserRequestClient$ClientInstance;
.super Ljava/lang/Object;
.source "UserRequestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/net/UserRequestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientInstance"
.end annotation


# static fields
.field protected static client:Lcom/unisound/lib/net/UserRequestClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    new-instance v0, Lcom/unisound/lib/net/UserRequestClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/net/UserRequestClient;-><init>(Lcom/unisound/lib/net/UserRequestClient$1;)V

    sput-object v0, Lcom/unisound/lib/net/UserRequestClient$ClientInstance;->client:Lcom/unisound/lib/net/UserRequestClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
