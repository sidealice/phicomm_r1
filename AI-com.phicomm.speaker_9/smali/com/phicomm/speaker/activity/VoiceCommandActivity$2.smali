.class Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;
.super Lcom/phicomm/speaker/presenter/b/s;
.source "VoiceCommandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/VoiceCommandsBean;)V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    const v0, 0x7f0f012c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_6

    const-string v4, "=====getCommandsSuccess"

    .line 114
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->getCommands()Ljava/util/List;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {v5}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)I

    move-result v5

    if-ne v5, v1, :cond_3

    if-nez v4, :cond_0

    .line 118
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v3}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 119
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 120
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto/16 :goto_2

    .line 121
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v3}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    goto/16 :goto_2

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->getHas_next_page()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->c(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)I

    .line 132
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    .line 138
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Lcom/zhy/a/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/a/a/c/b;->notifyDataSetChanged()V

    goto/16 :goto_2

    :cond_3
    if-nez v4, :cond_4

    .line 143
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Lcom/zhy/a/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/a/a/c/b;->notifyDataSetChanged()V

    .line 145
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto :goto_2

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandsBean;->getHas_next_page()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 151
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->c(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)I

    .line 152
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    .line 153
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_5
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setCanPullUpRefresh(Z)V

    .line 157
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Lcom/zhy/a/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/a/a/c/b;->notifyDataSetChanged()V

    goto :goto_2

    .line 163
    :cond_6
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 164
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 165
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 166
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Lcom/zhy/a/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/a/a/c/b;->notifyDataSetChanged()V

    .line 167
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, v3}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 168
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->e()V

    .line 177
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    const-string v0, "====getCommandsError"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "==="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->b(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)I

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 180
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 181
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Lcom/zhy/a/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/a/a/c/b;->notifyDataSetChanged()V

    .line 182
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->refreshLayout:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->devNoneContent:Lcom/phicomm/speaker/views/DefaultExceptionView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/DefaultExceptionView;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->d(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$2;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->e(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Lcom/zhy/a/a/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/a/a/c/b;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
