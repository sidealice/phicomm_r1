.class Lcom/umeng/analytics/pro/e$a;
.super Ljava/lang/Object;
.source "UMDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/umeng/analytics/pro/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/e;-><init>(Lcom/umeng/analytics/pro/e$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/e$a;->a:Lcom/umeng/analytics/pro/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/e;
    .locals 1

    .line 25
    sget-object v0, Lcom/umeng/analytics/pro/e$a;->a:Lcom/umeng/analytics/pro/e;

    return-object v0
.end method
