.class final Landroid/text/util/UrlSpanHelper$2;
.super Ljava/lang/Object;
.source "UrlSpanHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/util/UrlSpanHelper;->showEmailDialog(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/CharSequence;

.field final synthetic val$widget:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "val$widget"    # Landroid/view/View;
    .param p2, "val$url"    # Ljava/lang/String;
    .param p3, "val$value"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    iput-object p1, p0, Landroid/text/util/UrlSpanHelper$2;->val$widget:Landroid/view/View;

    iput-object p2, p0, Landroid/text/util/UrlSpanHelper$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Landroid/text/util/UrlSpanHelper$2;->val$value:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 190
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$2;->val$widget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, "context":Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    .line 189
    :goto_0
    return-void

    .line 194
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$2;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/text/util/UrlSpanHelper;->-wrap9(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Landroid/text/util/UrlSpanHelper$2;->val$value:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$2;->val$widget:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/text/util/UrlSpanHelper;->-wrap7(Ljava/lang/CharSequence;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "email"

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$2;->val$value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/text/util/UrlSpanHelper;->-wrap9(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "email"

    iget-object v3, p0, Landroid/text/util/UrlSpanHelper$2;->val$value:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "com.android.contacts.extra.SHOW_CREATE_NEW_CONTACT_BUTTON"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/text/util/UrlSpanHelper;->-wrap9(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
