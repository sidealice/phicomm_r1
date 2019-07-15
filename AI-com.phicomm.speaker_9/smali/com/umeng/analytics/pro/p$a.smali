.class Lcom/umeng/analytics/pro/p$a;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/umeng/analytics/pro/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/p;-><init>(Lcom/umeng/analytics/pro/p$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/p$a;->a:Lcom/umeng/analytics/pro/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/p;
    .locals 1

    .line 46
    sget-object v0, Lcom/umeng/analytics/pro/p$a;->a:Lcom/umeng/analytics/pro/p;

    return-object v0
.end method
