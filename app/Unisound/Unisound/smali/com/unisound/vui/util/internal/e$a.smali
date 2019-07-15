.class final Lcom/unisound/vui/util/internal/e$a;
.super Lcom/unisound/vui/util/internal/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/unisound/vui/util/internal/e;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/util/internal/e$a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/util/internal/e$a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
