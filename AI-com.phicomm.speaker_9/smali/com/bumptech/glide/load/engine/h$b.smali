.class final enum Lcom/bumptech/glide/load/engine/h$b;
.super Ljava/lang/Enum;
.source "EngineRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/h$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/engine/h$b;

.field public static final enum b:Lcom/bumptech/glide/load/engine/h$b;

.field private static final synthetic c:[Lcom/bumptech/glide/load/engine/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 132
    new-instance v0, Lcom/bumptech/glide/load/engine/h$b;

    const-string v1, "CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/h$b;->a:Lcom/bumptech/glide/load/engine/h$b;

    .line 134
    new-instance v0, Lcom/bumptech/glide/load/engine/h$b;

    const-string v1, "SOURCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/engine/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/h$b;->b:Lcom/bumptech/glide/load/engine/h$b;

    const/4 v0, 0x2

    .line 130
    new-array v0, v0, [Lcom/bumptech/glide/load/engine/h$b;

    sget-object v1, Lcom/bumptech/glide/load/engine/h$b;->a:Lcom/bumptech/glide/load/engine/h$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/engine/h$b;->b:Lcom/bumptech/glide/load/engine/h$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bumptech/glide/load/engine/h$b;->c:[Lcom/bumptech/glide/load/engine/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/h$b;
    .locals 1

    .line 130
    const-class v0, Lcom/bumptech/glide/load/engine/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/h$b;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/h$b;
    .locals 1

    .line 130
    sget-object v0, Lcom/bumptech/glide/load/engine/h$b;->c:[Lcom/bumptech/glide/load/engine/h$b;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/h$b;

    return-object v0
.end method
