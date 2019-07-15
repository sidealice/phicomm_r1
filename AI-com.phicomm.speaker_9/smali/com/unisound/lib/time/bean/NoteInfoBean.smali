.class public Lcom/unisound/lib/time/bean/NoteInfoBean;
.super Ljava/lang/Object;
.source "NoteInfoBean.java"


# instance fields
.field private info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/NoteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pageCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/NoteInfo;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/unisound/lib/time/bean/NoteInfoBean;->info:Ljava/util/List;

    return-object v0
.end method

.method public getPageCount()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/unisound/lib/time/bean/NoteInfoBean;->pageCount:Ljava/lang/String;

    return-object v0
.end method

.method public setInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/time/bean/NoteInfo;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/unisound/lib/time/bean/NoteInfoBean;->info:Ljava/util/List;

    return-void
.end method

.method public setPageCount(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/unisound/lib/time/bean/NoteInfoBean;->pageCount:Ljava/lang/String;

    return-void
.end method
