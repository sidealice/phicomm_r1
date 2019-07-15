.class public Lcom/huawei/hms/support/log/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/log/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/huawei/hms/support/log/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hms/support/log/e;

    invoke-direct {v0, p1, p2}, Lcom/huawei/hms/support/log/e;-><init>(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)V

    iput-object v0, p0, Lcom/huawei/hms/support/log/e$a;->a:Lcom/huawei/hms/support/log/e;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/huawei/hms/support/log/e$a;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/e$a;->a:Lcom/huawei/hms/support/log/e;

    iput p1, v0, Lcom/huawei/hms/support/log/e;->j:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/huawei/hms/support/log/e$a;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/e$a;->a:Lcom/huawei/hms/support/log/e;

    iput-object p1, v0, Lcom/huawei/hms/support/log/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/huawei/hms/support/log/e;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/log/e$a;->a:Lcom/huawei/hms/support/log/e;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/e;->a()Lcom/huawei/hms/support/log/e;

    move-result-object v0

    return-object v0
.end method
