.class public Lcom/umeng/commonsdk/statistics/a;
.super Ljava/lang/Object;
.source "AnalyticsConfig.java"


# static fields
.field public static a:Ljava/lang/String; = "native"

.field public static b:Ljava/lang/String; = ""

.field public static c:I

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/umeng/commonsdk/statistics/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/d;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/common/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/common/d;->b()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/statistics/a;->d:Ljava/lang/String;

    .line 35
    :cond_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/a;->d:Ljava/lang/String;

    return-object p0
.end method
