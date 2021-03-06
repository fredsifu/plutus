class TenantPlutusTables < ActiveRecord::Migration
  def change
    # add a tenant column to plutus accounts table.
    add_column :plutus_accounts, :tenant_id, :integer, index: true
    add_column :plutus_entries, :tenant_id, :integer, index: true
  end
end
