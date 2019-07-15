.class public Lcom/huawei/hms/support/log/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/log/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/support/log/d$a;->b:Z

    invoke-static {}, Lcom/huawei/hms/support/log/d;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/support/log/d$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/huawei/hms/support/log/d$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/huawei/hms/support/log/d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/support/log/d$a;->b:Z

    return-object p0
.end method

.method public a()Lcom/huawei/hms/support/log/d;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/support/log/d$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/hms/support/log/d$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/d;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/log/d;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/hms/support/log/d$a;->b:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/huawei/hms/support/log/d;->a(Lcom/huawei/hms/support/log/d;)V

    :cond_0
    return-object v0
.end method
