.class public Lcom/alibaba/mtl/log/a/b;
.super Ljava/lang/Object;
.source "GcConfigChannelMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/a/b$a;
    }
.end annotation


# static fields
.field private static P:Ljava/lang/String; = "http://adashx.m.taobao.com/rest/gc2"

.field private static a:Lcom/alibaba/mtl/log/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/alibaba/mtl/log/a/b;

    invoke-direct {v0}, Lcom/alibaba/mtl/log/a/b;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/log/a/b;->a:Lcom/alibaba/mtl/log/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/mtl/log/a/b;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/mtl/log/a/b;->a:Lcom/alibaba/mtl/log/a/b;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/alibaba/mtl/log/a/b;->P:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public r()V
    .locals 2

    .line 24
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    new-instance v1, Lcom/alibaba/mtl/log/a/b$a;

    invoke-direct {v1, p0}, Lcom/alibaba/mtl/log/a/b$a;-><init>(Lcom/alibaba/mtl/log/a/b;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->b(Ljava/lang/Runnable;)V

    return-void
.end method
