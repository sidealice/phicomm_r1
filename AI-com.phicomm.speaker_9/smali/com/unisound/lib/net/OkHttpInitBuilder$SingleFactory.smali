.class final Lcom/unisound/lib/net/OkHttpInitBuilder$SingleFactory;
.super Ljava/lang/Object;
.source "OkHttpInitBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/net/OkHttpInitBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleFactory"
.end annotation


# static fields
.field protected static instant:Lcom/unisound/lib/net/OkHttpInitBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/unisound/lib/net/OkHttpInitBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/lib/net/OkHttpInitBuilder;-><init>(Lcom/unisound/lib/net/OkHttpInitBuilder$1;)V

    sput-object v0, Lcom/unisound/lib/net/OkHttpInitBuilder$SingleFactory;->instant:Lcom/unisound/lib/net/OkHttpInitBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
