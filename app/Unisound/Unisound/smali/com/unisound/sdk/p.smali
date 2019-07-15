.class Lcom/unisound/sdk/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/common/ah;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/o;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/p;->a:Lcom/unisound/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/p;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->postRecordingStartStatus()V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
