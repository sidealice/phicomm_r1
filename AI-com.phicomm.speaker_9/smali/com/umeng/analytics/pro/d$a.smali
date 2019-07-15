.class Lcom/umeng/analytics/pro/d$a;
.super Ljava/lang/Object;
.source "UMDBCreater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    new-instance v7, Lcom/umeng/analytics/pro/d;

    invoke-static {}, Lcom/umeng/analytics/pro/d;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/umeng/analytics/pro/d;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/pro/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ua.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/umeng/analytics/pro/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/umeng/analytics/pro/d$1;)V

    sput-object v7, Lcom/umeng/analytics/pro/d$a;->a:Lcom/umeng/analytics/pro/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/d;
    .locals 1

    .line 28
    sget-object v0, Lcom/umeng/analytics/pro/d$a;->a:Lcom/umeng/analytics/pro/d;

    return-object v0
.end method
