.class Lcom/umeng/analytics/pro/j$b;
.super Ljava/lang/Object;
.source "CoreProtocolImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    new-instance v0, Lcom/umeng/analytics/pro/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/j;-><init>(Lcom/umeng/analytics/pro/j$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/j$b;->a:Lcom/umeng/analytics/pro/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/j;
    .locals 1

    .line 106
    sget-object v0, Lcom/umeng/analytics/pro/j$b;->a:Lcom/umeng/analytics/pro/j;

    return-object v0
.end method
