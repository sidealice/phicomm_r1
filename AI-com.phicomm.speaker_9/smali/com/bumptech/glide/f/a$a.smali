.class final enum Lcom/bumptech/glide/f/a$a;
.super Ljava/lang/Enum;
.source "GenericRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/f/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/f/a$a;

.field public static final enum b:Lcom/bumptech/glide/f/a$a;

.field public static final enum c:Lcom/bumptech/glide/f/a$a;

.field public static final enum d:Lcom/bumptech/glide/f/a$a;

.field public static final enum e:Lcom/bumptech/glide/f/a$a;

.field public static final enum f:Lcom/bumptech/glide/f/a$a;

.field public static final enum g:Lcom/bumptech/glide/f/a$a;

.field public static final enum h:Lcom/bumptech/glide/f/a$a;

.field private static final synthetic i:[Lcom/bumptech/glide/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 42
    new-instance v0, Lcom/bumptech/glide/f/a$a;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/f/a$a;->a:Lcom/bumptech/glide/f/a$a;

    .line 44
    new-instance v0, Lcom/bumptech/glide/f/a$a;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/f/a$a;->b:Lcom/bumptech/glide/f/a$a;

    .line 46
    new-instance v0, Lcom/bumptech/glide/f/a$a;

    const-string v1, "WAITING_FOR_SIZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/f/a$a;->c:Lcom/bumptech/glide/f/a$a;

    .line 48
    new-instance v0, Lcom/bumptech/glide/f/a$a;

    const-string v1, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/f/a$a;->d:Lcom/bumptech/glide/f/a$a;

    .line 50
    new-instance v0, Lcom/bumptech/glide/f/a$a;

    const-string v1, "FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/f/a$a;->e:Lcom/bumptech/glide/f/a$a;

    .line 52
    new-instance v0, Lcom/bumptech/glide/f/a$a;

    const-string v1, "CANCELLED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/f/a$a;->f:Lcom/bumptech/glide/f/a$a;

    .line 54
    new-instance v0, Lcom/bumptech/glide/f/a$a;

    const-string v1, "CLEARED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/f/a$a;->g:Lcom/bumptech/glide/f/a$a;

    .line 56
    new-instance v0, Lcom/bumptech/glide/f/a$a;

    const-string v1, "PAUSED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/bumptech/glide/f/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/f/a$a;->h:Lcom/bumptech/glide/f/a$a;

    const/16 v0, 0x8

    .line 40
    new-array v0, v0, [Lcom/bumptech/glide/f/a$a;

    sget-object v1, Lcom/bumptech/glide/f/a$a;->a:Lcom/bumptech/glide/f/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/f/a$a;->b:Lcom/bumptech/glide/f/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/f/a$a;->c:Lcom/bumptech/glide/f/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/f/a$a;->d:Lcom/bumptech/glide/f/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/f/a$a;->e:Lcom/bumptech/glide/f/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bumptech/glide/f/a$a;->f:Lcom/bumptech/glide/f/a$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bumptech/glide/f/a$a;->g:Lcom/bumptech/glide/f/a$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/bumptech/glide/f/a$a;->h:Lcom/bumptech/glide/f/a$a;

    aput-object v1, v0, v9

    sput-object v0, Lcom/bumptech/glide/f/a$a;->i:[Lcom/bumptech/glide/f/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/f/a$a;
    .locals 1

    .line 40
    const-class v0, Lcom/bumptech/glide/f/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/f/a$a;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/f/a$a;
    .locals 1

    .line 40
    sget-object v0, Lcom/bumptech/glide/f/a$a;->i:[Lcom/bumptech/glide/f/a$a;

    invoke-virtual {v0}, [Lcom/bumptech/glide/f/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/f/a$a;

    return-object v0
.end method
