.class Lcom/unisound/vui/util/b/a/h$a;
.super Lcom/unisound/vui/util/b/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/unisound/vui/util/b/a/e$a",
        "<",
        "Lcom/unisound/vui/util/b/a/c",
        "<TD;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/unisound/vui/util/b/a/f",
            "<TD;>;>;"
        }
    .end annotation
.end field

.field b:[Lcom/unisound/vui/util/b/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/unisound/vui/util/b/a/c",
            "<TD;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/b/a/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/util/b/a/f",
            "<TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/unisound/vui/util/b/a/e$a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/util/b/a/h$a;->a:Ljava/util/LinkedList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/vui/util/b/a/h$a;->c:I

    iget-object v0, p0, Lcom/unisound/vui/util/b/a/h$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/util/b/a/h$a;->b()Lcom/unisound/vui/util/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method a([Lcom/unisound/vui/util/b/a/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/unisound/vui/util/b/a/f",
            "<TD;>;)V"
        }
    .end annotation

    array-length v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/util/b/a/h$a;->a:Ljava/util/LinkedList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b()Lcom/unisound/vui/util/b/a/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/unisound/vui/util/b/a/c",
            "<TD;>;"
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/unisound/vui/util/b/a/h$a;->b:[Lcom/unisound/vui/util/b/a/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/util/b/a/h$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/util/b/a/h$a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/b/a/f;

    iget-object v2, v0, Lcom/unisound/vui/util/b/a/f;->f:[Lcom/unisound/vui/util/b/a/f;

    invoke-virtual {p0, v2}, Lcom/unisound/vui/util/b/a/h$a;->a([Lcom/unisound/vui/util/b/a/f;)V

    iget-object v2, v0, Lcom/unisound/vui/util/b/a/f;->d:[Lcom/unisound/vui/util/b/a/c;

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v0, v0, Lcom/unisound/vui/util/b/a/f;->d:[Lcom/unisound/vui/util/b/a/c;

    iput-object v0, p0, Lcom/unisound/vui/util/b/a/h$a;->b:[Lcom/unisound/vui/util/b/a/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/util/b/a/h$a;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/util/b/a/h$a;->b:[Lcom/unisound/vui/util/b/a/c;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/unisound/vui/util/b/a/h$a;->b:[Lcom/unisound/vui/util/b/a/c;

    iget v2, p0, Lcom/unisound/vui/util/b/a/h$a;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/unisound/vui/util/b/a/h$a;->c:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/unisound/vui/util/b/a/h$a;->c:I

    iget-object v3, p0, Lcom/unisound/vui/util/b/a/h$a;->b:[Lcom/unisound/vui/util/b/a/c;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    iput-object v1, p0, Lcom/unisound/vui/util/b/a/h$a;->b:[Lcom/unisound/vui/util/b/a/c;

    goto :goto_1
.end method
