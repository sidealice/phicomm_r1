.class public Lcom/unisound/vui/transport/out/OutputEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .local p0, "this":Lcom/unisound/vui/transport/out/OutputEvent;, "Lcom/unisound/vui/transport/out/OutputEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unisound/vui/transport/out/OutputEvent;->type:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/transport/out/OutputEvent;, "Lcom/unisound/vui/transport/out/OutputEvent<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unisound/vui/transport/out/OutputEvent;->type:I

    iput-object p2, p0, Lcom/unisound/vui/transport/out/OutputEvent;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/transport/out/OutputEvent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/unisound/vui/transport/out/OutputEvent;->type:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/transport/out/OutputEvent;, "Lcom/unisound/vui/transport/out/OutputEvent<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/unisound/vui/transport/out/OutputEvent;->data:Ljava/lang/Object;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .local p0, "this":Lcom/unisound/vui/transport/out/OutputEvent;, "Lcom/unisound/vui/transport/out/OutputEvent<TT;>;"
    iput p1, p0, Lcom/unisound/vui/transport/out/OutputEvent;->type:I

    return-void
.end method
