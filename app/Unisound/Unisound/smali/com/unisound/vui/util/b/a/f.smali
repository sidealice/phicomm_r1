.class Lcom/unisound/vui/util/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:[Lcom/unisound/vui/util/b/a/c;

.field static final b:[C

.field static final c:[Lcom/unisound/vui/util/b/a/f;


# instance fields
.field d:[Lcom/unisound/vui/util/b/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/unisound/vui/util/b/a/c",
            "<TC;>;"
        }
    .end annotation
.end field

.field e:[C

.field f:[Lcom/unisound/vui/util/b/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/unisound/vui/util/b/a/f",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [Lcom/unisound/vui/util/b/a/c;

    sput-object v0, Lcom/unisound/vui/util/b/a/f;->a:[Lcom/unisound/vui/util/b/a/c;

    new-array v0, v1, [C

    sput-object v0, Lcom/unisound/vui/util/b/a/f;->b:[C

    new-array v0, v1, [Lcom/unisound/vui/util/b/a/f;

    sput-object v0, Lcom/unisound/vui/util/b/a/f;->c:[Lcom/unisound/vui/util/b/a/f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/unisound/vui/util/b/a/f;->a()[Lcom/unisound/vui/util/b/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/b/a/f;->d:[Lcom/unisound/vui/util/b/a/c;

    sget-object v0, Lcom/unisound/vui/util/b/a/f;->b:[C

    iput-object v0, p0, Lcom/unisound/vui/util/b/a/f;->e:[C

    invoke-static {}, Lcom/unisound/vui/util/b/a/f;->b()[Lcom/unisound/vui/util/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/b/a/f;->f:[Lcom/unisound/vui/util/b/a/f;

    return-void
.end method

.method static a()[Lcom/unisound/vui/util/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">()[",
            "Lcom/unisound/vui/util/b/a/c",
            "<TD;>;"
        }
    .end annotation

    sget-object v0, Lcom/unisound/vui/util/b/a/f;->a:[Lcom/unisound/vui/util/b/a/c;

    check-cast v0, [Lcom/unisound/vui/util/b/a/c;

    return-object v0
.end method

.method static b()[Lcom/unisound/vui/util/b/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">()[",
            "Lcom/unisound/vui/util/b/a/f",
            "<TD;>;"
        }
    .end annotation

    sget-object v0, Lcom/unisound/vui/util/b/a/f;->c:[Lcom/unisound/vui/util/b/a/f;

    check-cast v0, [Lcom/unisound/vui/util/b/a/f;

    return-object v0
.end method
