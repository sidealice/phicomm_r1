.class public Lcom/huawei/hms/support/log/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/log/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Lcom/huawei/hms/support/log/e;

.field b:Lcom/huawei/hms/support/log/f;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/log/e;Lcom/huawei/hms/support/log/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "record and logger is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p2, p0, Lcom/huawei/hms/support/log/a$b;->b:Lcom/huawei/hms/support/log/f;

    iput-object p1, p0, Lcom/huawei/hms/support/log/a$b;->a:Lcom/huawei/hms/support/log/e;

    return-void
.end method
