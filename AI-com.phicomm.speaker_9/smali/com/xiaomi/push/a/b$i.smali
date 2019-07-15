.class public final Lcom/xiaomi/push/a/b$i;
.super Lcom/google/protobuf/micro/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/google/protobuf/micro/a;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/e;-><init>()V

    sget-object v0, Lcom/google/protobuf/micro/a;->a:Lcom/google/protobuf/micro/a;

    iput-object v0, p0, Lcom/xiaomi/push/a/b$i;->b:Lcom/google/protobuf/micro/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/a/b$i;->c:I

    return-void
.end method

.method public static b([B)Lcom/xiaomi/push/a/b$i;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/a/b$i;

    invoke-direct {v0}, Lcom/xiaomi/push/a/b$i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/a/b$i;->a([B)Lcom/google/protobuf/micro/e;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/a/b$i;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/a/b$i;->c:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/a/b$i;->b()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/a/b$i;->c:I

    return v0
.end method

.method public synthetic a(Lcom/google/protobuf/micro/b;)Lcom/google/protobuf/micro/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/a/b$i;->b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/a/b$i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/a/b$i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/a/b$i;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/a/b$i;->b:Lcom/google/protobuf/micro/a;

    return-object p0
.end method

.method public a(Lcom/google/protobuf/micro/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/a/b$i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/a/b$i;->d()Lcom/google/protobuf/micro/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILcom/google/protobuf/micro/a;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/a/b$i;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/a/b$i;->d()Lcom/google/protobuf/micro/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/micro/c;->b(ILcom/google/protobuf/micro/a;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    iput v1, p0, Lcom/xiaomi/push/a/b$i;->c:I

    return v1
.end method

.method public b(Lcom/google/protobuf/micro/b;)Lcom/xiaomi/push/a/b$i;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->a()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/a/b$i;->a(Lcom/google/protobuf/micro/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/b;->h()Lcom/google/protobuf/micro/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/a/b$i;->a(Lcom/google/protobuf/micro/a;)Lcom/xiaomi/push/a/b$i;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public d()Lcom/google/protobuf/micro/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/a/b$i;->b:Lcom/google/protobuf/micro/a;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/a/b$i;->a:Z

    return v0
.end method
