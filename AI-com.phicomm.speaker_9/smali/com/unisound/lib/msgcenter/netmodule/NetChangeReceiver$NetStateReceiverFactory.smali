.class final Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateReceiverFactory;
.super Ljava/lang/Object;
.source "NetChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetStateReceiverFactory"
.end annotation


# static fields
.field public static instance:Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;-><init>(Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$1;)V

    sput-object v0, Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver$NetStateReceiverFactory;->instance:Lcom/unisound/lib/msgcenter/netmodule/NetChangeReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
