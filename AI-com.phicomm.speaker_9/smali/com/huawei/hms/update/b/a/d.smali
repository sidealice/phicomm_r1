.class public final Lcom/huawei/hms/update/b/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/update/b/a/d$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/update/b/a/d;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    iput v0, p0, Lcom/huawei/hms/update/b/a/d;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/update/b/a/d;->d:Ljava/lang/String;

    iput p1, p0, Lcom/huawei/hms/update/b/a/d;->a:I

    iput-object p2, p0, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    iput p3, p0, Lcom/huawei/hms/update/b/a/d;->c:I

    iput-object p4, p0, Lcom/huawei/hms/update/b/a/d;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;Lcom/huawei/hms/update/b/a/d$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/update/b/a/d;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
