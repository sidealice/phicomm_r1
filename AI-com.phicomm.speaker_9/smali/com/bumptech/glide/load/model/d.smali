.class public interface abstract Lcom/bumptech/glide/load/model/d;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lcom/bumptech/glide/load/model/d;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/model/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/model/d$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/d$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/d;->a:Lcom/bumptech/glide/load/model/d;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/model/i$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/i$a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/i$a;->a()Lcom/bumptech/glide/load/model/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/d;->b:Lcom/bumptech/glide/load/model/d;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
